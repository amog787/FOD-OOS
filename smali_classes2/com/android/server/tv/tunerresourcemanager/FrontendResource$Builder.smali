.class public Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "FrontendResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExclusiveGroupId:I

.field private mType:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    .line 103
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    .line 103
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 2

    .line 138
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;Lcom/android/server/tv/tunerresourcemanager/FrontendResource$1;)V

    .line 139
    .local v0, "frontendResource":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    return-object v0
.end method

.method public exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
    .locals 0
    .param p1, "exclusiveGroupId"    # I

    .line 127
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    .line 128
    return-object p0
.end method

.method public type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 117
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    .line 118
    return-object p0
.end method
