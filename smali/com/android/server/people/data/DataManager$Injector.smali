.class Lcom/android/server/people/data/DataManager$Injector;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createCallLogQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/CallLogQueryHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/CallLogQueryHelper;"
        }
    .end annotation

    .line 1005
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    new-instance v0, Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/CallLogQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1000
    new-instance v0, Lcom/android/server/people/data/ContactsQueryHelper;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createMmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/MmsQueryHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/MmsQueryHelper;"
        }
    .end annotation

    .line 1010
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    new-instance v0, Lcom/android/server/people/data/MmsQueryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/MmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 992
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method createSmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/SmsQueryHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/SmsQueryHelper;"
        }
    .end annotation

    .line 1015
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    new-instance v0, Lcom/android/server/people/data/SmsQueryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/SmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method createUsageStatsQueryHelper(ILjava/util/function/Function;)Lcom/android/server/people/data/UsageStatsQueryHelper;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;)",
            "Lcom/android/server/people/data/UsageStatsQueryHelper;"
        }
    .end annotation

    .line 1020
    .local p2, "packageDataGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/people/data/PackageData;>;"
    new-instance v0, Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;-><init>(ILjava/util/function/Function;)V

    return-object v0
.end method

.method getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 996
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
