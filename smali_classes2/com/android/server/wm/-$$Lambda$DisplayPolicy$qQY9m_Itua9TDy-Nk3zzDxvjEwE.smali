.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/graphics/Rect;

.field private final synthetic f$5:Landroid/graphics/Rect;

.field private final synthetic f$6:Z

.field private final synthetic f$7:Lcom/android/server/wm/WindowState;

.field private final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$2:I

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$3:I

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$5:Landroid/graphics/Rect;

    iput-boolean p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$6:Z

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$7:Lcom/android/server/wm/WindowState;

    iput-boolean p9, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$2:I

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$3:I

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$5:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$6:Z

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$7:Lcom/android/server/wm/WindowState;

    iget-boolean v8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;->f$8:Z

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemUiVisibilityLw$10$DisplayPolicy(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V

    return-void
.end method
