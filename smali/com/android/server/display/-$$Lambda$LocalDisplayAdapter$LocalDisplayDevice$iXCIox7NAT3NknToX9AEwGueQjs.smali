.class public final synthetic Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;

    invoke-direct {v0}, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;-><init>()V

    sput-object v0, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;->INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    invoke-static {p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$iXCIox7NAT3NknToX9AEwGueQjs(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V

    return-void
.end method
