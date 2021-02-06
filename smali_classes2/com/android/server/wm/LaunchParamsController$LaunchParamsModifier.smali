.class interface abstract Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LaunchParamsModifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier$Phase;,
        Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier$Result;
    }
.end annotation


# static fields
.field public static final PHASE_BOUNDS:I = 0x2

.field public static final PHASE_DISPLAY:I = 0x0

.field public static final PHASE_WINDOWING_MODE:I = 0x1

.field public static final RESULT_CONTINUE:I = 0x2

.field public static final RESULT_DONE:I = 0x1

.field public static final RESULT_SKIP:I


# virtual methods
.method public abstract onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
.end method
