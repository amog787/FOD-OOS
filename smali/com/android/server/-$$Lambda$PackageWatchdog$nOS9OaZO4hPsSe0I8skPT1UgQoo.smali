.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;->f$0:Lcom/android/server/PackageWatchdog;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$onPackagesReady$0$PackageWatchdog(Ljava/lang/String;)V

    return-void
.end method
