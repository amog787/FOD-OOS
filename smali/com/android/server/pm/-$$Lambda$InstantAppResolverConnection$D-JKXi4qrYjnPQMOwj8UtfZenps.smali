.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstantAppResolverConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;->f$0:Lcom/android/server/pm/InstantAppResolverConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$D-JKXi4qrYjnPQMOwj8UtfZenps;->f$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-virtual {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->lambda$optimisticBind$0$InstantAppResolverConnection()V

    return-void
.end method
