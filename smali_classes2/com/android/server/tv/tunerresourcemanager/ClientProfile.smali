.class public final Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_GROUP_ID:I = -0x1

.field public static final INVALID_RESOURCE_ID:I = -0x1


# instance fields
.field private mGroupId:I

.field private final mId:I

.field private mNiceValue:I

.field private mPriority:I

.field private final mProcessId:I

.field private final mTvInputSessionId:Ljava/lang/String;

.field private final mUseCase:I

.field private mUsingCasSystemId:I

.field private mUsingFrontendIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingLnbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendIds:Ljava/util/Set;

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbIds:Ljava/util/Set;

    .line 78
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 89
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 90
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$100(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$200(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 92
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->access$300(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .param p2, "x1"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    return v0
.end method

.method public getInUseCasSystemId()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return v0
.end method

.method public getInUseFrontendIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendIds:Ljava/util/Set;

    return-object v0
.end method

.method public getInUseLnbIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbIds:Ljava/util/Set;

    return-object v0
.end method

.method public getNiceValue()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    return v0
.end method

.method public getProcessId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return v0
.end method

.method public getTvInputSessionId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    return v0
.end method

.method public reclaimAllResources()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 204
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 206
    return-void
.end method

.method public releaseCas()V
    .locals 1

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 197
    return-void
.end method

.method public releaseFrontend(I)V
    .locals 2
    .param p1, "frontendId"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public releaseLnb(I)V
    .locals 2
    .param p1, "lnbId"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "groupId"    # I

    .line 124
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    .line 125
    return-void
.end method

.method public setNiceValue(I)V
    .locals 0
    .param p1, "niceValue"    # I

    .line 132
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    .line 133
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 128
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProfile[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tvInputSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useCas(I)V
    .locals 0
    .param p1, "casSystemId"    # I

    .line 185
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 186
    return-void
.end method

.method public useFrontend(I)V
    .locals 2
    .param p1, "frontendId"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public useLnb(I)V
    .locals 2
    .param p1, "lnbId"    # I

    .line 163
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
