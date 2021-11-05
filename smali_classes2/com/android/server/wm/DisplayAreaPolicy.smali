.class public abstract Lcom/android/server/wm/DisplayAreaPolicy;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicy$Provider;,
        Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
    }
.end annotation


# instance fields
.field protected final mContent:Lcom/android/server/wm/DisplayContent;

.field protected final mImeContainer:Lcom/android/server/wm/DisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRoot:Lcom/android/server/wm/DisplayArea$Root;

.field protected final mTaskDisplayAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)V
    .locals 0
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "content"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "root"    # Lcom/android/server/wm/DisplayArea$Root;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/DisplayArea$Root;",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p4, "imeContainer":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;"
    .local p5, "taskDisplayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskDisplayArea;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    .line 67
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    .line 68
    iput-object p5, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    .line 69
    return-void
.end method


# virtual methods
.method public abstract addWindow(Lcom/android/server/wm/WindowToken;)V
.end method

.method public abstract attachDisplayAreas()V
.end method

.method public getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method public getTaskDisplayAreaCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
