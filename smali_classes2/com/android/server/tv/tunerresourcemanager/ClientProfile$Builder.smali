.class public Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private mProcessId:I

.field private mTvInputSessionId:Ljava/lang/String;

.field private mUseCase:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 217
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 217
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 217
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 217
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 2

    .line 263
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile$1;)V

    .line 264
    .local v0, "clientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    return-object v0
.end method

.method public processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "processId"    # I

    .line 253
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    .line 254
    return-object p0
.end method

.method public tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "tvInputSessionId"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "useCase"    # I

    .line 233
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    .line 234
    return-object p0
.end method
