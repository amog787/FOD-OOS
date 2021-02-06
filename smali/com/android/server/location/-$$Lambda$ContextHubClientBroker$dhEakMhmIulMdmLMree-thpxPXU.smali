.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/ContextHubClientBroker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ContextHubClientBroker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onHubReset$7$ContextHubClientBroker()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
