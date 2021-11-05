.class public final synthetic Lcom/android/server/people/data/-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/PackageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/PackageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4;->f$0:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4;->f$0:Lcom/android/server/people/data/PackageData;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$1$PackageData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
