.class Lcom/android/server/notification/ShortcutHelper$1;
.super Landroid/content/pm/LauncherApps$Callback;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 83
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 87
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 79
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 92
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 97
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 8
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

    .line 102
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v0}, Lcom/android/server/notification/ShortcutHelper;->access$000(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 103
    .local v0, "shortcutBubbles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "bubbleKeysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 107
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v2, "shortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    .local v4, "shortcutId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 113
    .local v5, "foundShortcut":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 114
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    const/4 v5, 0x1

    .line 116
    goto :goto_2

    .line 113
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    .end local v6    # "i":I
    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v6}, Lcom/android/server/notification/ShortcutHelper;->access$000(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v6}, Lcom/android/server/notification/ShortcutHelper;->access$100(Lcom/android/server/notification/ShortcutHelper;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 125
    invoke-static {v6}, Lcom/android/server/notification/ShortcutHelper;->access$000(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v6}, Lcom/android/server/notification/ShortcutHelper;->access$300(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v7}, Lcom/android/server/notification/ShortcutHelper;->access$200(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 127
    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/notification/ShortcutHelper;->access$102(Lcom/android/server/notification/ShortcutHelper;Z)Z

    .line 131
    .end local v4    # "shortcutId":Ljava/lang/String;
    .end local v5    # "foundShortcut":Z
    :cond_2
    goto :goto_0

    .line 135
    .end local v2    # "shortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "bubbleKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v4}, Lcom/android/server/notification/ShortcutHelper;->access$400(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 139
    iget-object v4, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v4}, Lcom/android/server/notification/ShortcutHelper;->access$400(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/server/notification/ShortcutHelper$ShortcutListener;->onShortcutRemoved(Ljava/lang/String;)V

    .line 135
    .end local v3    # "bubbleKey":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
