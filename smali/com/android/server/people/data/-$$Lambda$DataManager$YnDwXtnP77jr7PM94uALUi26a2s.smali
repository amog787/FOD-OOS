.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-static {v0, v1, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneUninstalledPackageData$5(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method
