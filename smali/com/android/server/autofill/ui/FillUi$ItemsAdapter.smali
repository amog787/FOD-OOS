.class final Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FillUi.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemsAdapter"
.end annotation


# instance fields
.field private final mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/FillUi$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilteredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/FillUi$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/autofill/ui/FillUi$ViewItem;",
            ">;)V"
        }
    .end annotation

    .line 816
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 814
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 817
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    .line 818
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 819
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 811
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 811
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 823
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;
    .locals 1
    .param p1, "position"    # I

    .line 862
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 867
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 872
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemsAdapter: [all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filtered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
