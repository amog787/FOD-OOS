.class public interface abstract Lcom/android/server/om/OverlayReferenceMapper$Provider;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayReferenceMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract getActorPkg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;
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
.end method
