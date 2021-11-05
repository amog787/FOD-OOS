.class Lcom/android/server/am/BroadcastDispatcher$Deferrals;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Deferrals"
.end annotation


# instance fields
.field alarmCount:I

.field final broadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field deferUntil:J

.field deferredAt:J

.field deferredBy:J

.field final uid:I


# direct methods
.method constructor <init>(IJJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "backoff"    # J
    .param p6, "count"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    .line 57
    iput-wide p2, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredAt:J

    .line 58
    iput-wide p4, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 59
    add-long v0, p2, p4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 60
    iput p6, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "br"    # Lcom/android/server/am/BroadcastRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 77
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 78
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 79
    .end local v1    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V
    .locals 2
    .param p1, "d"    # Lcom/android/server/am/BroadcastDispatcher$Dumper;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 84
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    .line 85
    .end local v1    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Deferrals{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", deferUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-wide v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", #broadcasts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
