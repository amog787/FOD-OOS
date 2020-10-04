.class Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 125
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEvictionCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v1}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 131
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$208(Lcom/android/server/notification/ValidateNotificationPeople;)I

    .line 132
    return-void
.end method
