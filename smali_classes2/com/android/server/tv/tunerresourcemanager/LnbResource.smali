.class public final Lcom/android/server/tv/tunerresourcemanager/LnbResource;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.source "LnbResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;Lcom/android/server/tv/tunerresourcemanager/LnbResource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;
    .param p2, "x1"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource$1;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LnbResource[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->mIsInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownerClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->mOwnerClientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
