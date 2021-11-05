.class Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    }
.end annotation


# instance fields
.field private final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-object p0
.end method

.method build(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
    .locals 8
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
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;"
        }
    .end annotation

    .line 348
    .local p4, "imeContainer":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;"
    .local p5, "taskDisplayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskDisplayArea;>;"
    new-instance v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method protected getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-object v0
.end method
