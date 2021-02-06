.class public final synthetic Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/RescueParty;->lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
