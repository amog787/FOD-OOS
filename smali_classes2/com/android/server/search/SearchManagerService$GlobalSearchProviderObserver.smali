.class Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 196
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 198
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    .line 199
    nop

    .line 200
    const-string v0, "search_global_search_activity"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 207
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->access$400(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    return-void

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
