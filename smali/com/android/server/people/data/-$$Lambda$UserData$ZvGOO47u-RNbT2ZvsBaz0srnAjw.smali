.class public final synthetic Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/UserData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/UserData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;->f$0:Lcom/android/server/people/data/UserData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$UserData$ZvGOO47u-RNbT2ZvsBaz0srnAjw;->f$0:Lcom/android/server/people/data/UserData;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/people/data/UserData;->lambda$ZvGOO47u-RNbT2ZvsBaz0srnAjw(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
