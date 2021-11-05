.class final Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForAllWindowsConsumerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ToBooleanFunction<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 2048
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "x1"    # Lcom/android/server/wm/WindowContainer$1;

    .line 2048
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2058
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2059
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 2048
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->apply(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

.method release()V
    .locals 1

    .line 2063
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 2064
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->access$100(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2065
    return-void
.end method

.method setConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 2053
    .local p0, "this":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 2054
    return-void
.end method
