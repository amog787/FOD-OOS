.class Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedArgs"
.end annotation


# instance fields
.field public algorithm:Ljava/lang/String;

.field public blobId:J

.field public digest:[B

.field public expiryTimeMillis:J

.field public label:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/String;

.field public userId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 181
    const-string v0, "SHA-256"

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerShellCommand$1;

    .line 178
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    iget-wide v3, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/app/blob/BlobHandle;->create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v0

    return-object v0
.end method
