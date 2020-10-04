.class Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KeySetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublicKeyHandle"
.end annotation


# instance fields
.field private final mId:J

.field private final mKey:Ljava/security/PublicKey;

.field private mRefCount:I

.field final synthetic this$0:Lcom/android/server/pm/KeySetManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "id"    # J
    .param p4, "refCount"    # I
    .param p5, "key"    # Ljava/security/PublicKey;

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    .line 86
    iput p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 87
    iput-object p5, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # Ljava/security/PublicKey;
    .param p6, "x4"    # Lcom/android/server/pm/KeySetManagerService$1;

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "id"    # J
    .param p4, "key"    # Ljava/security/PublicKey;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 78
    iput-object p4, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    .line 79
    return-void
.end method


# virtual methods
.method public decrRefCountLPw()J
    .locals 2

    .line 108
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 109
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/security/PublicKey;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getRefCountLPr()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    return v0
.end method

.method public incrRefCountLPw()V
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 104
    return-void
.end method
