.class public Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
.super Ljava/lang/Object;
.source "CasResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/CasResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMaxSessionNum:I

.field private mSystemId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "systemId"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    .line 111
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    .line 111
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 2

    .line 136
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;Lcom/android/server/tv/tunerresourcemanager/CasResource$1;)V

    .line 137
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    return-object v0
.end method

.method public maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .locals 0
    .param p1, "maxSessionNum"    # I

    .line 126
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 127
    return-object p0
.end method
