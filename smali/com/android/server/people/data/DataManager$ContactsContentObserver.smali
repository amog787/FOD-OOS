.class Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    }
.end annotation


# instance fields
.field private mLastUpdatedTimestamp:J

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .line 603
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 604
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 606
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lcom/android/server/people/data/DataManager$1;

    .line 599
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onChange$0(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/PackageData;)V
    .locals 2
    .param p0, "contactUri"    # Landroid/net/Uri;
    .param p1, "conversationSelector"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 622
    nop

    .line 623
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 624
    .local v0, "ci":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v0, :cond_0

    .line 625
    nop

    .line 626
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    .line 625
    invoke-static {p1, v1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->access$1402(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)Lcom/android/server/people/data/ConversationStore;

    .line 627
    invoke-static {p1, v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->access$1302(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)Lcom/android/server/people/data/ConversationInfo;

    .line 629
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 610
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v0

    .line 611
    .local v0, "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->querySince(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    return-void

    .line 614
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 616
    .local v1, "contactUri":Landroid/net/Uri;
    new-instance v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager$1;)V

    .line 617
    .local v2, "conversationSelector":Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v3, p3}, Lcom/android/server/people/data/DataManager;->access$1200(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    .line 618
    .local v3, "userData":Lcom/android/server/people/data/UserData;
    if-nez v3, :cond_1

    .line 619
    return-void

    .line 621
    :cond_1
    new-instance v4, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;

    invoke-direct {v4, v1, v2}, Lcom/android/server/people/data/-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0;-><init>(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)V

    invoke-virtual {v3, v4}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 630
    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->access$1300(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 631
    return-void

    .line 634
    :cond_2
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 635
    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->access$1300(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 636
    .local v4, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 637
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 638
    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->access$1400(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 639
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getLastUpdatedTimestamp()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 640
    return-void
.end method
