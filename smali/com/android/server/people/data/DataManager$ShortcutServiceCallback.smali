.class Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onShortcutsAddedOrUpdated$0$DataManager$ShortcutServiceCallback(Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "shortcuts"    # Ljava/util/List;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 739
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 740
    .local v1, "shortcut":Landroid/content/pm/ShortcutInfo;
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 741
    invoke-static {v2}, Lcom/android/server/people/data/DataManager;->access$1700(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 740
    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 744
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_0
    goto :goto_0

    .line 745
    :cond_1
    return-void
.end method

.method public synthetic lambda$onShortcutsRemoved$1$DataManager$ShortcutServiceCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "shortcuts"    # Ljava/util/List;

    .line 752
    const/4 v0, -0x1

    .line 754
    .local v0, "uid":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 755
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 754
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 758
    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 760
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 761
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/people/data/PackageData;->deleteDataForConversation(Ljava/lang/String;)V

    .line 764
    :cond_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 765
    iget-object v4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v4}, Lcom/android/server/people/data/DataManager;->access$1600(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v4

    .line 766
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-interface {v4, v5, v0, v6}, Lcom/android/server/notification/NotificationManagerInternal;->onConversationRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :cond_1
    goto :goto_1

    .line 769
    :cond_2
    return-void
.end method

.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 738
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 751
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/people/data/-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method
