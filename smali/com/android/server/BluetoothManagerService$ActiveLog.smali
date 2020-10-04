.class Lcom/android/server/BluetoothManagerService$ActiveLog;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveLog"
.end annotation


# instance fields
.field private mEnable:Z

.field private mPackageName:Ljava/lang/String;

.field private mReason:I

.field private mTimestamp:J

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V
    .locals 0
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enable"    # Z
    .param p5, "timestamp"    # J

    .line 198
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p2, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    .line 200
    iput-object p3, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    .line 201
    iput-boolean p4, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    .line 202
    iput-wide p5, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    .line 203
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->access$000(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    if-eqz v1, :cond_0

    const-string v1, "  Enabled "

    goto :goto_0

    :cond_0
    const-string v1, " Disabled "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    .line 207
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
