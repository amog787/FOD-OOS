.class final Lcom/android/server/am/ReceiverList;
.super Ljava/util/ArrayList;
.source "ReceiverList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public final app:Lcom/android/server/am/ProcessRecord;

.field curBroadcast:Lcom/android/server/am/BroadcastRecord;

.field linkedToDeath:Z

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field public final pid:I

.field public final receiver:Landroid/content/IIntentReceiver;

.field stringName:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_pid"    # I
    .param p4, "_uid"    # I
    .param p5, "_userId"    # I
    .param p6, "_receiver"    # Landroid/content/IIntentReceiver;

    .line 50
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 52
    iput-object p6, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    .line 53
    iput-object p2, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 54
    iput p3, p0, Lcom/android/server/am/ReceiverList;->pid:I

    .line 55
    iput p4, p0, Lcom/android/server/am/ReceiverList;->uid:I

    .line 56
    iput p5, p0, Lcom/android/server/am/ReceiverList;->userId:I

    .line 57
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 69
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 70
    return-void
.end method

.method public containsFilter(Landroid/content/IntentFilter;)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v0

    .line 74
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 76
    .local v2, "f":Lcom/android/server/am/BroadcastFilter;
    invoke-static {v2, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x1

    return v3

    .line 74
    .end local v2    # "f":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 114
    .local v0, "pr":Landroid/util/Printer;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "p2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v2

    .line 117
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 119
    .local v4, "bf":Lcom/android/server/am/BroadcastFilter;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Filter #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    const-string v5, ": BroadcastFilter{"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 123
    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    .line 117
    .end local v4    # "bf":Lcom/android/server/am/BroadcastFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 85
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 86
    iget v2, p0, Lcom/android/server/am/ReceiverList;->pid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 87
    iget v2, p0, Lcom/android/server/am/ReceiverList;->uid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 88
    iget v2, p0, Lcom/android/server/am/ReceiverList;->userId:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 89
    iget-object v2, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_0

    .line 90
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 92
    :cond_0
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v2

    .line 94
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 96
    .local v4, "bf":Lcom/android/server/am/BroadcastFilter;
    const-wide v5, 0x20b00000007L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/BroadcastFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 94
    .end local v4    # "bf":Lcom/android/server/am/BroadcastFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "i":I
    :cond_1
    const-wide v3, 0x10900000008L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 100
    return-void
.end method

.method dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v0, " pid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 105
    const-string v0, " user="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curBroadcast="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 108
    const-string v0, " linkedToDeath="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 110
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 61
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ReceiverList{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    iget v2, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "(unknown name)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_2

    const-string v1, " local:"

    goto :goto_1

    :cond_2
    const-string v1, " remote:"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    return-object v1
.end method
