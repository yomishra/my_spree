object @taxon
attributes *taxon_attributes

node do |t|
  child t.children => :taxons do
    attributes *taxon_attributes
    node(:is_leaf) {|taxon| taxon.leaf?}
  end
end
