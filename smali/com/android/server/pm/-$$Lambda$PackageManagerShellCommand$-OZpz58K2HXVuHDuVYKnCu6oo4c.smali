.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;->f$0:Lcom/android/server/pm/PackageManagerShellCommand;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;->f$0:Lcom/android/server/pm/PackageManagerShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
