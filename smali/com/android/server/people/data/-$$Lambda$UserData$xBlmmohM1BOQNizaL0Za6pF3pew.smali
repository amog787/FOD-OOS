.class public final synthetic Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/UserData;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;->f$0:Lcom/android/server/people/data/UserData;

    iput-object p2, p0, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;->f$0:Lcom/android/server/people/data/UserData;

    iget-object v1, p0, Lcom/android/server/people/data/-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/UserData;->lambda$getOrCreatePackageData$0$UserData(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    return-object p1
.end method
