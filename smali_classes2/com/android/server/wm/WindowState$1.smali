.class Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w1"    # Lcom/android/server/wm/WindowState;
    .param p2, "w2"    # Lcom/android/server/wm/WindowState;

    .line 722
    iget v0, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 723
    .local v0, "layer1":I
    iget v1, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 724
    .local v1, "layer2":I
    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    if-gez v1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 729
    :cond_1
    :goto_0
    const/4 v2, -0x1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 719
    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState$1;->compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result p1

    return p1
.end method
