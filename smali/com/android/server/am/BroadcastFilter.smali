.class final Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "BroadcastFilter.java"


# instance fields
.field final instantApp:Z

.field final owningUid:I

.field final owningUserId:I

.field final packageName:Ljava/lang/String;

.field final receiverList:Lcom/android/server/am/ReceiverList;

.field final requiredPermission:Ljava/lang/String;

.field final visibleToInstantApp:Z


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0
    .param p1, "_filter"    # Landroid/content/IntentFilter;
    .param p2, "_receiverList"    # Lcom/android/server/am/ReceiverList;
    .param p3, "_packageName"    # Ljava/lang/String;
    .param p4, "_requiredPermission"    # Ljava/lang/String;
    .param p5, "_owningUid"    # I
    .param p6, "_userId"    # I
    .param p7, "_instantApp"    # Z
    .param p8, "_visibleToInstantApp"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 40
    iput-object p2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 41
    iput-object p3, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 44
    iput p6, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 45
    iput-boolean p7, p0, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    .line 46
    iput-boolean p8, p0, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    .line 47
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requiredPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pr"    # Landroid/util/Printer;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 70
    invoke-super {p0, p2, p3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BroadcastFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "/u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 51
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3}, Landroid/content/IntentFilter;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 52
    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 53
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 55
    :cond_0
    const-wide v2, 0x10900000003L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 56
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 58
    return-void
.end method
