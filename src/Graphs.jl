module Graphs
    using DataStructures
    
    import Base.start, Base.done, Base.next
    import Base.length, Base.isempty, Base.getindex
    
    export
        AbstractGraph,
    
        # concept checking
        implements_vertex_list,
        implements_edge_list,
        implements_vertex_map,
        implements_edge_map,
        implements_adjacency_list,
        implements_incidence_list,
        implements_bidirectional_adjacency_list,
        implements_bidirectional_incidence_list,
        implements_adjacency_matrix,
        @graph_implements, @graph_requires,
    
        # common interfaces
        vertex_type, edge_type, source, target, edge, 
        is_directed, is_mutable, vertex_index, edge_index,
        num_vertices, vertices, num_edges, edges, 
        out_degree, out_neighbors, out_edges,
        in_degree, in_neighbors, in_edges,        
        
        # common
        Edge, IndexedEdge, XEdge, IndexedXEdge,
        
        add_edge!, add_vertex!, add_edges!, add_vertices!,
    
        # adjacency_list
        AdjacencyList, adjacency_list, 
        directed_adjacency_list, undirected_adjacency_list,
        
        # incidence_list
        IncidenceList, incidence_list, 
        directed_incidence_list, undirected_incidence_list,
        
        # breadth_first_visit
        AbstractBFSVisitor, 
        discover_vertex!, open_vertex!, examine_edge!, close_vertex!,
        breadth_first_visit, breadth_first_vertex_list, breadth_first_distances
        
        
        
    include("concepts.jl")
    include("common.jl")
    
    include("adjacency_list.jl")
    include("incidence_list.jl")
    
    include("breadth_first_visit.jl")
end
