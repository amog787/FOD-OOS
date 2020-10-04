.class Lcom/android/server/am/BroadcastDispatcher$Dumper;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dumper"
.end annotation


# instance fields
.field final mDumpPackage:Ljava/lang/String;

.field mHeading:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field mNeedSep:Z

.field mOrdinal:I

.field mPrinted:Z

.field final mPw:Ljava/io/PrintWriter;

.field final mQueueName:Ljava/lang/String;

.field final mSdf:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastDispatcher;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "queueName"    # Ljava/lang/String;
    .param p4, "dumpPackage"    # Ljava/lang/String;
    .param p5, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 114
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    .line 116
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mDumpPackage:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mSdf:Ljava/text/SimpleDateFormat;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    .line 122
    return-void
.end method


# virtual methods
.method didPrint()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    return v0
.end method

.method dump(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "br"    # Lcom/android/server/am/BroadcastRecord;

    .line 140
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mDumpPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 142
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 145
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mNeedSep:Z

    .line 147
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mHeading:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    .line 152
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mSdf:Ljava/text/SimpleDateFormat;

    const-string v2, "    "

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 154
    :cond_3
    return-void
.end method

.method setHeading(Ljava/lang/String;)V
    .locals 1
    .param p1, "heading"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mHeading:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mPrinted:Z

    .line 127
    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mLabel:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastDispatcher$Dumper;->mOrdinal:I

    .line 133
    return-void
.end method
