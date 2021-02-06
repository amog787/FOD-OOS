.class Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Landroid/content/pm/parsing/component/ParsedActivity;",
        "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    .line 1582
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ComponentResolver$1;

    .line 1283
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 1283
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .param p1, "x1"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .line 1283
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .param p1, "x1"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "x2"    # Ljava/lang/String;

    .line 1283
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeActivity(Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;)V

    return-void
.end method

.method private addActivity(Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "a"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1336
    .local p3, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1342
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1343
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1344
    .local v2, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    if-eqz p3, :cond_0

    const-string v3, "activity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1345
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_1
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->addFilter(Landroid/util/Pair;)V

    .line 1342
    .end local v2    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1356
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;II)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .param p3, "match"    # I
    .param p4, "userId"    # I

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/content/IntentFilter;

    .line 1409
    const-string v2, "MATCH_"

    invoke-static {v1, v2, p3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; intent info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method private removeActivity(Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;)V
    .locals 4
    .param p1, "a"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "type"    # Ljava/lang/String;

    .line 1359
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1365
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1366
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1371
    .local v2, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1365
    .end local v2    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    .end local v1    # "j":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1378
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1379
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1380
    .local v2, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1381
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1382
    const/4 v1, 0x0

    return v1

    .line 1378
    .end local v2    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1385
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    .line 1283
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1540
    .local p3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1541
    .local v0, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1543
    .local v1, "filter":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1546
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1547
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1546
    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1283
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1558
    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    .line 1560
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1561
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1563
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1564
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1563
    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 1566
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1569
    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1554
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1574
    .local p1, "input":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1283
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1578
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isFilterStopped(Landroid/util/Pair;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1396
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {p1, p2}, Lcom/android/server/pm/ComponentResolver;->access$1200(Landroid/util/Pair;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isFilterStopped(Ljava/lang/Object;I)Z
    .locals 0

    .line 1283
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->isFilterStopped(Landroid/util/Pair;I)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1402
    .local p2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1283
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Landroid/util/Pair;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1391
    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;
    .locals 17
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;II)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1417
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p3

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1418
    .local v9, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1420
    .local v10, "info":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_0

    .line 1424
    return-object v11

    .line 1427
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 1428
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v12, :cond_1

    .line 1429
    return-object v11

    .line 1432
    :cond_1
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v2, v9, v3, v8}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1438
    return-object v11

    .line 1440
    :cond_2
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 1441
    invoke-virtual {v9}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1440
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 1442
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_3

    .line 1446
    return-object v11

    .line 1448
    :cond_3
    invoke-virtual {v13, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v14

    .line 1449
    .local v14, "userState":Landroid/content/pm/PackageUserState;
    iget v4, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    move-object v2, v12

    move-object v3, v9

    move-object v5, v14

    move/from16 v6, p3

    move-object v7, v13

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1451
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_4

    .line 1456
    return-object v11

    .line 1458
    :cond_4
    iget v3, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    .line 1460
    .local v3, "matchExplicitlyVisibleOnly":Z
    :goto_0
    iget v6, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    move v6, v5

    .line 1462
    .local v6, "matchVisibleToInstantApp":Z
    :goto_1
    if-eqz v6, :cond_8

    .line 1464
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isVisibleToInstantApp()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v3, :cond_7

    .line 1465
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isExplicitlyVisibleToInstantApp()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v7, v4

    goto :goto_2

    :cond_8
    move v7, v5

    .line 1466
    .local v7, "componentVisible":Z
    :goto_2
    iget v15, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v16, 0x800000

    and-int v15, v15, v16

    if-eqz v15, :cond_9

    goto :goto_3

    :cond_9
    move v4, v5

    .line 1468
    .local v4, "matchInstantApp":Z
    :goto_3
    if-eqz v6, :cond_a

    if-nez v7, :cond_a

    iget-boolean v5, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v5, :cond_a

    .line 1479
    return-object v11

    .line 1482
    :cond_a
    if-nez v4, :cond_b

    iget-boolean v5, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_b

    .line 1486
    return-object v11

    .line 1490
    :cond_b
    iget-boolean v5, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_c

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1494
    return-object v11

    .line 1496
    :cond_c
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1497
    .local v5, "res":Landroid/content/pm/ResolveInfo;
    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1498
    iget v11, v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_d

    .line 1499
    iput-object v10, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1501
    :cond_d
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->handleAllWebDataURI()Z

    move-result v11

    iput-boolean v11, v5, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 1502
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v11

    iput v11, v5, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1507
    move/from16 v11, p2

    iput v11, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1508
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v15

    iput-boolean v15, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1509
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getLabelRes()I

    move-result v15

    iput v15, v5, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1510
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v5, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1523
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v15

    invoke-static {v15, v5, v10, v8}, Lcom/android/server/pm/PmInjector;->managedIcon(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/ResolveInfo;Landroid/content/pm/parsing/component/ParsedIntentInfo;I)V

    .line 1526
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getIcon()I

    move-result v15

    iput v15, v5, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1527
    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v15

    iput-boolean v15, v5, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1528
    iget-boolean v15, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v15, v5, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1529
    return-object v5
.end method

.method protected bridge synthetic newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1296
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    const/4 v0, 0x0

    return-object v0

    .line 1299
    :cond_0
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1300
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1289
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1290
    :cond_0
    if-eqz p3, :cond_1

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1291
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1307
    .local p4, "packageActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    return-object v0

    .line 1310
    :cond_0
    if-nez p4, :cond_1

    .line 1311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1313
    :cond_1
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1314
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1315
    .local v4, "defaultOnly":Z
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1316
    .local v0, "activitiesSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    .line 1320
    .local v7, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 1321
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1322
    .local v2, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    .line 1323
    .local v3, "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v5

    .line 1325
    .local v5, "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    const/4 v6, 0x0

    .local v6, "arrayIndex":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 1326
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1325
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1328
    .end local v6    # "arrayIndex":I
    :cond_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    .end local v2    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    .end local v5    # "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1331
    .end local v1    # "i":I
    .end local v3    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1534
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1535
    return-void
.end method
