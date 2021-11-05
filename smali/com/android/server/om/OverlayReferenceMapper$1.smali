.class Lcom/android/server/om/OverlayReferenceMapper$1;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"

# interfaces
.implements Lcom/android/server/om/OverlayReferenceMapper$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayReferenceMapper;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayReferenceMapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayReferenceMapper;

    .line 106
    iput-object p1, p0, Lcom/android/server/om/OverlayReferenceMapper$1;->this$0:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "actor"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    .line 113
    .local v0, "namedActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    nop

    .line 114
    invoke-static {p1, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v1

    .line 115
    .local v1, "actorPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/om/OverlayActorEnforcer$ActorState;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "target":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 126
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetName()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "overlayable":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v3, "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-object v2
.end method
