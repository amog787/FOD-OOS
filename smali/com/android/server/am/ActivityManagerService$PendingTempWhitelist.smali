.class final Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingTempWhitelist"
.end annotation


# instance fields
.field final duration:J

.field final tag:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p1, "_targetUid"    # I
    .param p2, "_duration"    # J
    .param p4, "_tag"    # Ljava/lang/String;

    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    .line 1479
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    .line 1480
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    .line 1481
    return-void
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1484
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1485
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1486
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1487
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1488
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1489
    return-void
.end method
