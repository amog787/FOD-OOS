.class Lcom/android/server/wm/WindowList;
.super Ljava/util/ArrayList;
.source "WindowList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method addFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
