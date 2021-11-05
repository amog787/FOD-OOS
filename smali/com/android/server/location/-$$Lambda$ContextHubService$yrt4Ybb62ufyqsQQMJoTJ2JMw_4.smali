.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/NanoAppFilter;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;->f$0:Landroid/hardware/location/NanoAppFilter;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;->f$0:Landroid/hardware/location/NanoAppFilter;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->lambda$findNanoAppOnHub$0(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V

    return-void
.end method
