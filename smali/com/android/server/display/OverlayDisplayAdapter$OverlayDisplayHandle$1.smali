.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
.super Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .locals 16
    .param p1, "this$1"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "activeMode"    # I
    .param p6, "defaultMode"    # I
    .param p7, "refreshRate"    # F
    .param p8, "presentationDeadlineNanos"    # J
    .param p10, "flags"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .param p11, "state"    # I
    .param p12, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p13, "number"    # I

    .line 465
    .local p4, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    move-object/from16 v0, p1

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V

    return-void
.end method


# virtual methods
.method public onModeChangedLocked(I)V
    .locals 1
    .param p1, "index"    # I

    .line 468
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V

    .line 469
    return-void
.end method
