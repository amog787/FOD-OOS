.class Lcom/android/server/pm/AppsFilter$1;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AppsFilter;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/AppsFilter;

    .line 486
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p2, "users"    # [Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    .line 490
    .local p1, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    new-instance v1, Landroid/util/SparseArray;

    array-length v2, p2

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/pm/AppsFilter;->access$202(Lcom/android/server/pm/AppsFilter;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 491
    return-void
.end method
