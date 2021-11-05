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

    .line 239
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p2, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    .line 241
    iput-object p3, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    .line 242
    iput-boolean p4, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    .line 243
    iput-wide p5, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    .line 244
    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 252
    iget-wide v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 253
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 254
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 247
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

    .line 248
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method
