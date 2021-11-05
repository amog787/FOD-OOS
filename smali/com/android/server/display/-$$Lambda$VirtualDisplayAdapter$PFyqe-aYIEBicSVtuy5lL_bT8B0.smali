.class public final synthetic Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;

    invoke-direct {v0}, Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;-><init>()V

    sput-object v0, Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;->INSTANCE:Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->lambda$new$0(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
