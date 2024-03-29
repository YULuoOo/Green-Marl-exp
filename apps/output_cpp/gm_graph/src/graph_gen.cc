#include <stdlib.h>
#include <set>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <assert.h>
#include <sys/time.h>
#include <string>
#include <fstream>
#include "graph_gen.h"
#include "gm_rand.h"
using namespace std;
gm_graph* create_uniform_random_graph(node_t N, edge_t M, long seed, bool use_xorshift_rng) {
    
    gm_rand xorshift_rng(seed);
    if (!use_xorshift_rng) {
        srand(seed);
    }

    gm_graph* g = new gm_graph();
    g->prepare_external_creation(N, M);

    node_t* src = new node_t[M];
    node_t* dest = new node_t[M];
    edge_t* degree = new edge_t[N];
    memset(degree, 0, sizeof(edge_t) * N);

    for (edge_t i = 0; i < M; i++) {
        node_t r;
        if (use_xorshift_rng) r = (edge_t)xorshift_rng.rand();
        else r = rand(); //TODO 64-bit ?
        src[i] = r % N;  
        if (use_xorshift_rng) r = (edge_t)xorshift_rng.rand();
        else r = rand(); //TODO 64-bit ?
        dest[i] = r % N; 

        degree[src[i]]++;
    }

    g->begin[0] = 0;
    for (node_t i = 1; i <= N; i++) {
        g->begin[i] = g->begin[i - 1] + degree[i - 1];
    }

    for (edge_t i = 0; i < M; i++) {
        node_t u = src[i];
        node_t v = dest[i];

        edge_t pos = degree[u]--;
        assert(pos > 0);
        g->node_idx[g->begin[u] + pos - 1] = v;  // set end node of this edge
    }

    delete[] src;
    delete[] dest;
    delete[] degree;

    return g;
}

//-----------------------------------------------------------------------------
// Note: this method is 20x slower than the above method
//-----------------------------------------------------------------------------
gm_graph* create_uniform_random_graph2(node_t N, edge_t M, long seed) {
    srand(seed);

    gm_graph *G = new gm_graph();
    for (node_t i = 0; i < N; i++) {
        G->add_node();
    }
    for (edge_t i = 0; i < M; i++) {
        node_t from = rand() % N;
        node_t to = rand() % N;
       G->add_edge(to,from);
        G->add_edge(from, to);
    }

    struct timeval T1, T2;
    gettimeofday(&T1, NULL);
    G->freeze();
    gettimeofday(&T2, NULL);
    printf("time for freeze (ms) = %lf\n", ((T2.tv_sec) - (T1.tv_sec)) * 1000 - (T2.tv_usec - T1.tv_usec) * 0.001);

    return G;
}

//-----------------------------------------------------------------------------
// Note: Based on create_uniform_random_graph2
//-----------------------------------------------------------------------------
gm_graph* create_uniform_random_nonmulti_graph(node_t N, edge_t M, long seed) {
    srand(seed);

    gm_graph *G = new gm_graph();
    for (node_t i = 0; i < N; i++) {
        G->add_node();
    }
    for (edge_t i = 0; i < M; i++) {
        node_t from = rand() % N;
        node_t to = rand() % N;
        if (!G->has_edge(from, to)){
          G->add_edge(from, to);
          G->add_edge(to,from);
        }
        else
          i--;
    }

    G->freeze();

    return G;
}

struct edge {
    int to;
    int from;
};
gm_graph* mycreate(node_t N, edge_t M, long seed) {
    gm_graph *G = new gm_graph();
    for (node_t i = 0; i<=916427; i++) {
        G->add_node();
    }
    string path = "/root/zyw/Green-Marl/apps/output_cpp/web-Google.txt";

    ifstream inFile(path.c_str());
    if (!inFile.is_open())
    {
        printf("Could not open the file \n");
    }

    int num = 5105039;
    edge *dd = new edge[num+1];
    int i=0;
    while(i<num)
    {
        inFile >> dd[i].to;
        inFile >> dd[i].from;
        inFile.get();
        i++;
        if (inFile.eof()){
            printf("End of file reached.\n");
            break;
        }
    }
    for (edge_t ii = 0; ii < num; ii++) {
        if (!G->has_edge(dd[ii].to,dd[ii].from)){
            G->add_edge(dd[ii].to,dd[ii].from);
            G->add_edge(dd[ii].from,dd[ii].to);
        }
    }
    G->freeze();
    return G;

}
gm_graph* mycreate_long_chain(node_t N, edge_t M, long seed){
    gm_graph *G = new gm_graph();
    for (node_t i = 0; i <= 100; i++) {
        G->add_node();
    }
    for (edge_t i = 0; i < 100; i++) {
        node_t from = i;
        node_t to = i+1;
        G->add_edge(from, to);
        G->add_edge(to,from);
    }

    G->freeze();

    return G;
}

gm_graph* exp_create(node_t N, edge_t M, long seed){
    //M = 1 direct M = 2 undirect
    //N = 1-5 dataset path
    string path;
    string dummyLine;
    gm_graph *G = new gm_graph();
    switch(N){
        case 1:
            path = "/export/vldb/2/scratch/llai/flash_exp/datasets/com-friendster.ungraph.txt";
            break;
        case 2:
            path = "/export/vldb/2/scratch/llai/flash_exp/datasets/eur-converted-new.txt";
            break;
        case 3:
            path = "/export/vldb/2/scratch/llai/flash_exp/datasets/uk-2002.txt";
            break;
        case 4:
            path = "/export/vldb/2/scratch/llai/flash_exp/datasets/com-lj.ungraph.txt";
            break;
        case 5:
            path = "/export/vldb/2/scratch/llai/flash_exp/datasets/twitter-2010.txt";
            break;
    }

    ifstream inFile(path.c_str());
    if (!inFile.is_open())
    {
        printf("Could not open the file \n");
    }
    int zz=0;
    if(N==1||N==4)
        while(zz++<4)
            getline(inFile, dummyLine);
    int maxnode = 0;
    int temp;
    while(true){
        inFile>>temp;
        maxnode = max(maxnode,temp);
    	inFile.get();
        if (inFile.eof()){
            break;
        }
    }
    printf("maxnode = %d\n",maxnode);
    for (node_t i = 0; i<=maxnode; i++) {
        G->add_node();
    }
    inFile.close();

    inFile.open(path.c_str());
    zz=0;
    if(N==1||N==4){
        while(zz++<4)
            getline(inFile, dummyLine);
        printf("skip 4 lines\n");
    }
    int to;
    int from;
    long long i=0;
    while(true)
    {
        inFile >> to;
	if(N==3)
            inFile.get();
        inFile >> from;
        inFile.get();
        if (inFile.eof()){
            printf("End of file reached.\n");
            break;
        }
//	printf("%d -> %d\n",to,from);
        if(to == from)
            continue;
        if(M ==1){
	    G->add_edge(to,from);
	    i++;
	} else if(M == 2){
            if (!G->has_edge(to,from)){
	    	 G->add_edge(to,from);
                 G->add_edge(from,to);
                 i++;
		}
	}
    }
    printf("edge = %lld\n",i);
    inFile.close();

    G->freeze();

    return G;

}


/** 
 Create RMAT graph
 a, b, c : params
 */
gm_graph* create_RMAT_graph(node_t N, edge_t M, long rseed, double a, double b, double c, bool permute) {
    double d;
    assert(a + b + c < 1);
    d = 1 - (a + b + c);

    // my favorite random seed
    srand48(rseed);

    gm_graph* g = new gm_graph();
    g->prepare_external_creation(N, M);

    //----------------------------------------------
    // generate edges
    //----------------------------------------------
    // 0. init
    node_t* src = new node_t[M];
    node_t* dest = new node_t[M];
    edge_t* degree = new edge_t[N];
    memset(degree, 0, sizeof(edge_t) * N);

    node_t SCALE = (node_t) log2((double) N);

    // 1. edge-gen
    for (edge_t i = 0; i < M; i++) {
        node_t u = 1;
        node_t v = 1;
        node_t step = N / 2;
        double av = a;
        double bv = b;
        double cv = c;
        double dv = d;

        double p = drand48();
        if (p < av) { // do nothing
        } else if (p < (av + bv)) {
            v += step;
        } else if (p < (av + bv + cv)) {
            u += step;
        } else {
            v += step;
            u += step;
        }
        for (node_t j = 1; j < SCALE; j++) {
            step = step / 2;
            double var = 0.1;
            av *= 0.95 + var * drand48();		// vary abcd by 10%
            bv *= 0.95 + var * drand48();
            cv *= 0.95 + var * drand48();
            dv *= 0.95 + var * drand48();

            double S = av + bv + cv + dv;
            av = av / S;
            bv = bv / S;
            cv = cv / S;
            dv = dv / S;

            // choose partition
            p = drand48();
            if (p < av) { // do nothing
            } else if (p < (av + bv)) {
                v += step;
            } else if (p < (av + bv + cv)) {
                u += step;
            } else {
                v += step;
                u += step;
            }
        }

        src[i] = u - 1;
        dest[i] = v - 1;

        // avoid self edges
        if (src[i] == dest[i]) {
            i = i - 1;
            continue;
        }
    }

    // 2. permutate vertice
    // so that, one can't know what are the high-degree edges from node_id
    if (permute) {
        node_t* P = new node_t[N];
        for (node_t i = 0; i < N; i++)
            P[i] = i;

        for (node_t i = 0; i < N; i++) {
            node_t j = (node_t) (N * drand48());
            node_t temp = P[j];
            P[j] = P[i];
            P[i] = temp;
        }

        for (edge_t i = 0; i < M; i++) {
            src[i] = P[src[i]];
            dest[i] = P[dest[i]];
        }

        delete[] P;
    }

    // 3. count degree
    for (edge_t i = 0; i < M; i++) {
        degree[src[i]]++;
    }

    // (It is possible this routine creates multi-edges between a node-pair)
    // (Should be check later, or be ignored now)

    // 4. Now setup G's data structures
    g->begin[0] = 0;
    for (node_t i = 1; i <= N; i++) {
        g->begin[i] = g->begin[i - 1] + degree[i - 1];
    }

    for (edge_t i = 0; i < M; i++) {
        node_t u = src[i];
        node_t v = dest[i];
        edge_t pos = degree[u]--;

        g->node_idx[g->begin[u] + pos - 1] = v;  // set end node of this edge
    }

    delete[] src;
    delete[] dest;
    delete[] degree;

    return g;
}
