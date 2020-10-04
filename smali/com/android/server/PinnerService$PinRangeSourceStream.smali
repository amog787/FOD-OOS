.class final Lcom/android/server/PinnerService$PinRangeSourceStream;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinRangeSourceStream"
.end annotation


# instance fields
.field private mDone:Z

.field private final mStream:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$1;)V

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 748
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    .line 749
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 2
    .param p1, "outPinRange"    # Lcom/android/server/PinnerService$PinRange;

    .line 753
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 756
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 761
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    xor-int/2addr v0, v1

    return v0
.end method
