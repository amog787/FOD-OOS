.class Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "ConversationStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/ConversationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationInfosProtoDiskReadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<",
        "Ljava/util/List<",
        "Lcom/android/server/people/data/ConversationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mConversationInfoFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "conversationInfoFileName"    # Ljava/lang/String;
    .param p3, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 307
    invoke-direct {p0, p1, p3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 308
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 309
    return-void
.end method

.method static synthetic lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 4
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;

    .line 325
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 330
    goto :goto_0

    .line 332
    :cond_0
    const-wide v1, 0x20b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 334
    .local v1, "token":J
    invoke-static {p0}, Lcom/android/server/people/data/ConversationInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 336
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 337
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    nop

    .end local v1    # "token":J
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    goto :goto_0

    .line 341
    :cond_1
    goto :goto_1

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/people/data/ConversationStore;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to read protobuf input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .locals 4
    .param p0, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "data"    # Ljava/util/List;

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 315
    .local v1, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 316
    .local v2, "token":J
    invoke-virtual {v1, p0}, Lcom/android/server/people/data/ConversationInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 317
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 318
    .end local v1    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v2    # "token":J
    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method deleteConversationsFile()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;

    return-object v0
.end method

.method protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$X5sTtfwjzwVPlSk3AGJazGmrmME;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$X5sTtfwjzwVPlSk3AGJazGmrmME;

    return-object v0
.end method

.method saveConversationsImmediately(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "conversationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method scheduleConversationsSave(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p1, "conversationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    return-void
.end method
