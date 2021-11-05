.class public Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "LnbResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/LnbResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;Lcom/android/server/tv/tunerresourcemanager/LnbResource$1;)V

    .line 53
    .local v0, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    return-object v0
.end method
