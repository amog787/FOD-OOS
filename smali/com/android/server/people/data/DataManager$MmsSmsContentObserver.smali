.class Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsSmsContentObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/ContentObserver;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/server/people/data/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastMmsTimestamp:J

.field private mLastSmsTimestamp:J

.field private final mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

.field private final mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 4
    .param p2, "handler"    # Landroid/os/Handler;

    .line 696
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 697
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 698
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/people/data/DataManager$Injector;->createMmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/MmsQueryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    .line 699
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/server/people/data/DataManager$Injector;->createSmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/SmsQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    .line 700
    nop

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    .line 702
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lcom/android/server/people/data/DataManager$1;

    .line 687
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$accept$0(Ljava/lang/String;Lcom/android/server/people/data/Event;Lcom/android/server/people/data/UserData;)V
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "event"    # Lcom/android/server/people/data/Event;
    .param p2, "userData"    # Lcom/android/server/people/data/UserData;

    .line 717
    invoke-virtual {p2}, Lcom/android/server/people/data/UserData;->getDefaultSmsApp()Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 718
    .local v0, "defaultSmsApp":Lcom/android/server/people/data/PackageData;
    if-nez v0, :cond_0

    .line 719
    return-void

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    .line 722
    .local v1, "conversationStore":Lcom/android/server/people/data/ConversationStore;
    invoke-virtual {v1, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 723
    return-void

    .line 725
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    .line 726
    .local v2, "eventStore":Lcom/android/server/people/data/EventStore;
    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    .line 727
    invoke-virtual {v3, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 728
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 687
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/android/server/people/data/Event;

    .line 716
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$MmsSmsContentObserver$UfeTRftTDIcNo1iUJLeOD5s_XmM;

    invoke-direct {v1, p1, p2}, Lcom/android/server/people/data/-$$Lambda$DataManager$MmsSmsContentObserver$UfeTRftTDIcNo1iUJLeOD5s_XmM;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1500(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 729
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 706
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/MmsQueryHelper;->querySince(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    invoke-virtual {v0}, Lcom/android/server/people/data/MmsQueryHelper;->getLastMessageTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/SmsQueryHelper;->querySince(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    invoke-virtual {v0}, Lcom/android/server/people/data/SmsQueryHelper;->getLastMessageTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    .line 712
    :cond_1
    return-void
.end method
