.class Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;
.super Lcom/android/server/accessibility/AccessibilityServiceConnection;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field final synthetic val$this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 14
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p6, "id"    # I
    .param p7, "mainHandler"    # Landroid/os/Handler;
    .param p8, "lock"    # Ljava/lang/Object;
    .param p9, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p10, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p11, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p12, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 3077
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-object/from16 v0, p13

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;->val$this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    return-void
.end method


# virtual methods
.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3080
    const/4 v0, 0x1

    return v0
.end method
