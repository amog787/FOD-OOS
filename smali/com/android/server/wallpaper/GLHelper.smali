.class Lcom/android/server/wallpaper/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sMaxTextureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lcom/android/server/wallpaper/GLHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "maxTextureSize":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->retrieveTextureSizeFromGL()I

    move-result v1

    :goto_0
    sput v1, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 64
    .end local v0    # "maxTextureSize":I
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxTextureSize()I
    .locals 1

    .line 145
    sget v0, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    return v0
.end method

.method private static retrieveTextureSizeFromGL()I
    .locals 18

    .line 74
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 75
    .local v1, "eglDisplay":Landroid/opengl/EGLDisplay;
    if-eqz v1, :cond_5

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_5

    .line 80
    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v2, v0, v2, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    const/4 v11, 0x0

    .line 86
    .local v11, "eglConfig":Landroid/opengl/EGLConfig;
    new-array v2, v10, [I

    move-object v12, v2

    .line 87
    .local v12, "configsCount":[I
    new-array v2, v10, [Landroid/opengl/EGLConfig;

    move-object v13, v2

    .line 88
    .local v13, "configs":[Landroid/opengl/EGLConfig;
    const/16 v2, 0x11

    new-array v3, v2, [I

    const/16 v2, 0x3040

    aput v2, v3, v0

    const/4 v14, 0x4

    aput v14, v3, v10

    const/16 v2, 0x3024

    const/4 v15, 0x2

    aput v2, v3, v15

    const/4 v9, 0x3

    const/16 v2, 0x8

    aput v2, v3, v9

    const/16 v4, 0x3023

    aput v4, v3, v14

    const/4 v8, 0x5

    aput v2, v3, v8

    const/4 v4, 0x6

    const/16 v5, 0x3022

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v2, v3, v4

    const/16 v4, 0x3021

    aput v4, v3, v2

    const/16 v2, 0x9

    aput v0, v3, v2

    const/16 v2, 0xa

    const/16 v4, 0x3025

    aput v4, v3, v2

    const/16 v2, 0xb

    aput v0, v3, v2

    const/16 v2, 0xc

    const/16 v4, 0x3026

    aput v4, v3, v2

    const/16 v2, 0xd

    aput v0, v3, v2

    const/16 v2, 0xe

    const/16 v4, 0x3027

    aput v4, v3, v2

    const/16 v2, 0xf

    const/16 v16, 0x3038

    aput v16, v3, v2

    const/16 v2, 0x10

    aput v16, v3, v2

    .line 100
    .local v3, "configSpec":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x0

    move-object v2, v1

    move-object v5, v13

    move v14, v8

    move-object v8, v12

    move v14, v9

    move/from16 v9, v17

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    aget v2, v12, v0

    if-lez v2, :cond_0

    .line 106
    aget-object v2, v13, v0

    move-object v11, v2

    .line 109
    :cond_0
    if-eqz v11, :cond_2

    .line 113
    new-array v2, v14, [I

    const/16 v4, 0x3098

    aput v4, v2, v0

    aput v15, v2, v10

    aput v16, v2, v15

    .line 114
    .local v2, "attr_list":[I
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v11, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    .line 117
    .local v4, "eglContext":Landroid/opengl/EGLContext;
    if-eqz v4, :cond_1

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v4, v5, :cond_1

    .line 123
    const/4 v5, 0x5

    new-array v5, v5, [I

    const/16 v6, 0x3057

    aput v6, v5, v0

    aput v10, v5, v10

    const/16 v6, 0x3056

    aput v6, v5, v15

    aput v10, v5, v14

    const/4 v6, 0x4

    aput v16, v5, v6

    .line 124
    .local v5, "attrs":[I
    nop

    .line 125
    invoke-static {v1, v11, v5, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v6

    .line 126
    .local v6, "eglSurface":Landroid/opengl/EGLSurface;
    invoke-static {v1, v6, v6, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 129
    new-array v7, v10, [I

    .line 130
    .local v7, "maxSize":[I
    const/16 v8, 0xd33

    invoke-static {v8, v7, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 133
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v8, v9, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 134
    invoke-static {v1, v6}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 135
    invoke-static {v1, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 136
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 137
    aget v0, v7, v0

    return v0

    .line 118
    .end local v5    # "attrs":[I
    .end local v6    # "eglSurface":Landroid/opengl/EGLSurface;
    .end local v7    # "maxSize":[I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglCreateContext failed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "err":Ljava/lang/String;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    .end local v0    # "err":Ljava/lang/String;
    .end local v2    # "attr_list":[I
    .end local v4    # "eglContext":Landroid/opengl/EGLContext;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "configSpec":[I
    .end local v11    # "eglConfig":Landroid/opengl/EGLConfig;
    .end local v12    # "configsCount":[I
    .end local v13    # "configs":[Landroid/opengl/EGLConfig;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v0    # "err":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "err":Ljava/lang/String;
    .end local v1    # "eglDisplay":Landroid/opengl/EGLDisplay;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    const-string v2, "Retrieve from GL failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const v1, 0x7fffffff

    return v1
.end method
