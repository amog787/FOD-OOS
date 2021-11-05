.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Landroid/hardware/location/ContextHubInfo;

    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubService;->lambda$dump$2(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V

    return-void
.end method
