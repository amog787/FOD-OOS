.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneUninstalledPackageData$4(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
