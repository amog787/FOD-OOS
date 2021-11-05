.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "CrossProfileIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p1, "input"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 49
    return-object p1
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 30
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 1
    .param p1, "size"    # I

    .line 34
    new-array v0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    return-void
.end method
