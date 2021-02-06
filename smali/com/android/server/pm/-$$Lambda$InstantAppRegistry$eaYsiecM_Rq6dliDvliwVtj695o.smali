.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$deleteInstantApplicationMetadataLPw$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p1

    return p1
.end method
