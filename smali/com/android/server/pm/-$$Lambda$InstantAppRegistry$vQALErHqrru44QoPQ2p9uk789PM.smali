.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$vQALErHqrru44QoPQ2p9uk789PM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$vQALErHqrru44QoPQ2p9uk789PM;->f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$vQALErHqrru44QoPQ2p9uk789PM;->f$0:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$onPackageInstalledLPw$0(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p1

    return p1
.end method
