module Graphs
    
    import Base.start, Base.done, Base.next
    import Base.length, Base.isempty, Base.getindex
    
    export
        AbstractGraph,
    
        # concept checking
        implements_vertex_list,
        implements_edge_list,
        implements_adjacency_list,
        implements_incidence_list,
        implements_bidirectional_adjacency_list,
        implements_bidirectional_incidence_list,
        implements_adjacency_matrix,
        @graph_implements, @graph_requires,
    
        # common interfaces
        vertex_type, edge_type, source, target, edge, 
        is_directed, is_mutable,
        num_vertices, vertices, num_edges, edges, 
        out_degree, out_neighbors, out_edges,
        in_degree, in_neighbors, in_edges,
        
        add_edge!, add_vertex!, add_edges!, add_vertices!,
    
        # adjacency_list
        AdjacencyList,
        
        # incidence_list
        DirectedIncidenceList
        
    include("concepts.jl")
    include("iterators.jl")
    
    include("adjacency_list.jl")
    include("incidence_list.jl")
end